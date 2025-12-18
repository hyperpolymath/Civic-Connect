# SPDX-License-Identifier: AGPL-3.0-or-later
# SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
#
# Civic-Connect - Nix Flake (Fallback Package Manager)
# Primary: guix.scm | Fallback: flake.nix
# Run: nix develop

{
  description = "Civic-Connect - Civic engagement platform";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, rust-overlay }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ (import rust-overlay) ];
        pkgs = import nixpkgs {
          inherit system overlays;
        };

        # Rust toolchain
        rustToolchain = pkgs.rust-bin.stable.latest.default.override {
          extensions = [ "rust-src" "rust-analyzer" ];
        };

      in {
        # Development shell
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # Rust development
            rustToolchain
            pkg-config
            openssl

            # Ada/SPARK development
            gnat
            gprbuild

            # Elixir/Phoenix development
            elixir
            erlang

            # Database
            postgresql

            # Container tooling
            podman
            podman-compose

            # Build tools
            just
            gnumake

            # Utilities
            git
            jq
            curl
          ];

          shellHook = ''
            echo "🏛️  Civic-Connect Development Environment"
            echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            echo "Rust:   $(rustc --version 2>/dev/null || echo 'not available')"
            echo "Elixir: $(elixir --version 2>/dev/null | head -1 || echo 'not available')"
            echo "Ada:    $(gnat --version 2>/dev/null | head -1 || echo 'not available')"
            echo ""
            echo "Run 'just' to see available tasks"
          '';

          # Environment variables
          RUST_BACKTRACE = "1";
          PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
        };

        # Package definition
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "civic-connect";
          version = "0.1.0";
          src = ./.;

          meta = with pkgs.lib; {
            description = "Civic engagement platform - part of the RSR ecosystem";
            homepage = "https://github.com/hyperpolymath/Civic-Connect";
            license = licenses.agpl3Plus;
            maintainers = [];
            platforms = platforms.all;
          };
        };
      }
    );
}
