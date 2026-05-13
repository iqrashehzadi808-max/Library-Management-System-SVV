sig Book {}

sig Student {}

sig Library {
    issued : Book -> lone Student
}

fact NoDuplicateIssue {
    all b : Book |
        lone Library.issued[b]
}

run {} for 5
