#! /usr/bin/env bash
git config --worktree user.email bod@kernel.org
git config --worktree user.signingkey E693FB2AABA36DE117AB6FB422713BB3A18DC83A
git config --worktree tag.gpgSign true
git config --worktree sendemail.smtpServer mail.kernel.org
git config --worktree sendemail.smtpServerPort 465
git config --worktree sendemail.smtpencryption ssl
git config --worktree sendemail.from bod@kernel.org
git config --worktree sendemail.smtpUser bod
git config --worktree sendemail.smtppass ITSA-SeCRET-DICKHEAD
