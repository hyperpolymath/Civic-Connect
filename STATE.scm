;;; STATE.scm - Project Checkpoint
;;; civic-connect
;;; Format: Guile Scheme S-expressions
;;; Purpose: Preserve AI conversation context across sessions
;;; Reference: https://github.com/hyperpolymath/state.scm

;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

;;;============================================================================
;;; METADATA
;;;============================================================================

(define metadata
  '((version . "0.1.0")
    (schema-version . "1.0")
    (created . "2025-12-15")
    (updated . "2025-12-18")
    (project . "civic-connect")
    (repo . "github.com/hyperpolymath/civic-connect")))

;;;============================================================================
;;; PROJECT CONTEXT
;;;============================================================================

(define project-context
  '((name . "civic-connect")
    (tagline . "Civic engagement platform with privacy-first design")
    (version . "0.1.0")
    (license . "AGPL-3.0-or-later")
    (rsr-compliance . "gold")

    (tech-stack
     ((backend-rust . "Axum REST API with Argon2/ed25519 crypto")
      (backend-elixir . "Phoenix real-time presence/chat")
      (backend-ada . "SPARK-verified core logic")
      (package-primary . "Guix (guix.scm)")
      (package-fallback . "Nix (flake.nix)")
      (ci-cd . "GitHub Actions (SHA-pinned) + GitLab CI + Bitbucket Pipelines")
      (security . "CodeQL + OSSF Scorecard + TruffleHog")))))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

(define current-position
  '((phase . "v0.1 - Security Hardening Complete")
    (overall-completion . 35)

    (components
     ((rsr-compliance
       ((status . "complete")
        (completion . 100)
        (notes . "All GitHub Actions SHA-pinned, SPDX headers, Guix+Nix packaging")))

      (security-infrastructure
       ((status . "complete")
        (completion . 100)
        (notes . "SECURITY.md, security.txt (RFC 9116), OSSF Scorecard, TruffleHog")))

      (documentation
       ((status . "foundation")
        (completion . 40)
        (notes . "README, META/ECOSYSTEM/STATE.scm, security docs complete")))

      (testing
       ((status . "minimal")
        (completion . 15)
        (notes . "Rust crypto tests exist, need integration tests")))

      (core-functionality
       ((status . "in-progress")
        (completion . 30)
        (notes . "Rust API scaffolded, Ada core logic defined, Elixir presence ready")))))

    (working-features
     ("RSR Gold compliant CI/CD pipeline"
      "SHA-pinned GitHub Actions (all workflows)"
      "Multi-platform mirroring (GitHub, GitLab, Bitbucket)"
      "Guix primary + Nix fallback package management"
      "RFC 9116 compliant security.txt"
      "Argon2id password hashing"
      "Ed25519 digital signatures"
      "SHA-256 email hashing (zero-knowledge)"))))

;;;============================================================================
;;; ROUTE TO MVP - UPDATED ROADMAP
;;;============================================================================

(define route-to-mvp
  '((target-version . "1.0.0")
    (definition . "Production-ready civic engagement platform")

    (milestones
     ((v0.1.1
       ((name . "Security Hardening")
        (status . "complete")
        (items
         ("SHA-pin all GitHub Actions"
          "Fix SECURITY.md with proper version support"
          "Add RFC 9116 compliant security.txt expiry"
          "Create flake.nix as Nix fallback"
          "Update STATE.scm roadmap"))))

      (v0.2
       ((name . "Core API Development")
        (status . "next")
        (items
         ("Complete Rust API endpoints (auth, users, events)"
          "Integrate Ada/SPARK verification module"
          "Add PostgreSQL migrations"
          "Implement JWT token generation"
          "API documentation (OpenAPI spec)"))))

      (v0.3
       ((name . "Real-time Features")
        (status . "pending")
        (items
         ("Phoenix presence tracking"
          "WebSocket chat channels"
          "Event notifications"
          "Rate limiting"))))

      (v0.5
       ((name . "Feature Complete")
        (status . "pending")
        (items
         ("User verification flow"
          "Location-based event discovery"
          "Civic engagement scoring (leveling)"
          "Test coverage > 70%"
          "API stability freeze"))))

      (v0.8
       ((name . "Pre-release Polish")
        (status . "pending")
        (items
         ("Performance profiling"
          "Security penetration testing"
          "Accessibility audit"
          "Load testing"))))

      (v1.0
       ((name . "Production Release")
        (status . "pending")
        (items
         ("Final security audit"
          "User documentation"
          "Deployment guides"
          "SLA definition"))))))))

;;;============================================================================
;;; BLOCKERS & ISSUES
;;;============================================================================

(define blockers-and-issues
  '((critical
     ())  ;; No critical blockers

    (high-priority
     ())  ;; No high-priority blockers

    (medium-priority
     ((test-coverage
       ((description . "Limited integration test coverage")
        (impact . "Risk of regressions in API changes")
        (needed . "Add API integration tests, property tests")))

      (database-schema
       ((description . "PostgreSQL schema not finalized")
        (impact . "May require migrations later")
        (needed . "Design and implement schema")))))

    (low-priority
     ((frontend
       ((description . "No frontend implementation yet")
        (impact . "Backend-only until v0.5")
        (needed . "ReScript frontend after API stabilizes")))))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

(define critical-next-actions
  '((immediate
     (("Implement remaining Rust API endpoints" . high)
      ("Add PostgreSQL schema and migrations" . high)
      ("Write API integration tests" . medium)))

    (this-week
     (("Complete auth flow with JWT" . high)
      ("Integrate Ada verification module" . medium)
      ("Add OpenAPI documentation" . medium)))

    (this-month
     (("Reach v0.2 milestone" . high)
      ("Begin Phoenix real-time implementation" . medium)
      ("Achieve 50% test coverage" . medium)))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-18")
      (session . "security-hardening")
      (accomplishments
       ("SHA-pinned all GitHub Actions workflows"
        "Fixed SECURITY.md with proper v0.1.x support"
        "Updated security.txt with RFC 9116 compliant expiry (2026-12-17)"
        "Created flake.nix as Nix fallback package manager"
        "Updated roadmap with detailed milestones"))
      (notes . "Security review and hardening session"))

     ((date . "2025-12-15")
      (session . "initial-state-creation")
      (accomplishments
       ("Added META.scm, ECOSYSTEM.scm, STATE.scm"
        "Established RSR compliance"
        "Created initial project checkpoint"))
      (notes . "First STATE.scm checkpoint created via automated script")))))

;;;============================================================================
;;; HELPER FUNCTIONS (for Guile evaluation)
;;;============================================================================

(define (get-completion-percentage component)
  "Get completion percentage for a component"
  (let ((comp (assoc component (cdr (assoc 'components current-position)))))
    (if comp
        (cdr (assoc 'completion (cdr comp)))
        #f)))

(define (get-blockers priority)
  "Get blockers by priority level"
  (cdr (assoc priority blockers-and-issues)))

(define (get-milestone version)
  "Get milestone details by version"
  (assoc version (cdr (assoc 'milestones route-to-mvp))))

;;;============================================================================
;;; EXPORT SUMMARY
;;;============================================================================

(define state-summary
  '((project . "civic-connect")
    (version . "0.1.0")
    (overall-completion . 35)
    (next-milestone . "v0.2 - Core API Development")
    (critical-blockers . 0)
    (high-priority-issues . 0)
    (updated . "2025-12-18")))

;;; End of STATE.scm
