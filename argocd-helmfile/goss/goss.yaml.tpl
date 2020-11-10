command:
  /usr/local/bin/argocd version:
    exit-status: 1
    stdout:
    - {{ .argocd_version }}
  /usr/local/bin/kubectl version:
    exit-status: 1
    stdout:
    - 1.18.10
  /usr/local/bin/helm version --short:
    exit-status: 0
    stdout:
    - v3.2.0
  /usr/local/bin/helm plugin list:
    exit-status: 0
    stdout:
      - /^diff/
      - /^helm-git/
      - /^secrets/
      - /^s3/
      - /^x/
  /usr/local/bin/helmfile -v:
    exit-status: 0
    stdout:
      - {{ .helmfile_version }}
