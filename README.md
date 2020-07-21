# Veracode Pipeline scan - GitHub action
GitHub action for submitting a pipeline scan with Veracode Static Analysis

This action can be used to submit a Veracode pipeline scan and returns a json result file.

This action can be used in conjunction with https://github.com/veracode/veracode-pipeline-scan-results-to-sarif to submit your results to GitHub.

<hr>

## Inputs

### `VERACODE_API_ID`

**Required** The VERACODE_API_ID should be stored using the secret manager ${{ secrets.VERACODE_API_ID }}.

### `VERACODE_API_KEY`

**Required** The VERACODE_API_KEY should be stored using the secret manager ${{ secrets.VERACODE_API_KEY }}.

### `pipeline_scan_file`

**Required** The path to the file to submit for a pipeline scan

### `app_id`

**Optional** The Veracode platform app_id to use when submitting a pipeline scan


## Example usage

```
- name: Submit a pipeline scan to Veracode Static Analysis
  id: pipeline-scan
  uses: Veracode/veracode-pipeline-scan-action@v0.1.0
  with:
    VERACODE_API_ID: secrets.VERACODE_API_ID
    VERACODE_API_KEY: secrets.VERACODE_API_KEY
    pipeline-file

```
