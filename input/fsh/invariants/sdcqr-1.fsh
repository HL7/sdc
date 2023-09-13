Invariant: sdcqr-1
Description: "Subject SHOULD be present (searching is difficult without subject).  Almost all QuestionnaireResponses should be with respect to some sort of subject."
Severity: #warning
Expression: "subject.exists()"
XPath: "exists(f:subject)"