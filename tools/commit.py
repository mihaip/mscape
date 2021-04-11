#!/usr/bin/python

import datetime
import subprocess

commit_message = ""

while True:
    try:
        commit_message += raw_input("Message: ") + "\n"
    except EOFError:
        break

commit_date_string = raw_input("Date: ")
commit_date = datetime.datetime.strptime(commit_date_string, "%Y-%m-%dT%H:%M:%S")

p = subprocess.Popen([
    "git", "commit", "-m%s" % commit_message, "software",
], env={
    "GIT_AUTHOR_NAME": "Mihai Parparita",
    "GIT_AUTHOR_EMAIL": "mihai@mscape.com",
    "GIT_AUTHOR_DATE": commit_date.isoformat(),
    "GIT_COMMITTER_NAME": "Mihai Parparita",
    "GIT_COMMITTER_EMAIL": "mihai@mscape.com",
    "GIT_COMMITTER_DATE": commit_date.isoformat(),
})
p.wait()
