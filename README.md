# Veracode Static Analysis pipeline scan - GitHub action
GitHub action for submitting a pipeline scan with Veracode Static Analysis

This action can be used to submit a Veracode pipeline scan and returns a json result file.

This action can be used in conjunction with https://github.com/veracode/veracode-pipeline-scan-results-to-sarif to submit your static analysis results to GitHub.

<hr>

## Inputs

### `filepath`
**Required:** Filepath of the file to scan. For complete details of pipeline scan expected packaging of files and detailed options for the pipeline scan, please consult the Veracode Help Center documentation - https://help.veracode.com/reader/tS9CaFwL4_lbIEWWomsJoA/YEbb9w21qPx0xGaIXTB3zw.

## Example usage

The example in .github/workflows/main.yml will submit the file specified in the filepath option for a pipeline scan and convert the json results from the scan to SARIF format and upload to GitHub as code scanning alerts.

The veracode credentials are read from github secrets. VERACODE_API_ID and VERACODE_API_KEY - NEVER STORE YOUR SECRETS IN THE REPOSITORY.
