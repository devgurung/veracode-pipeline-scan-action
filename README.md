# Veracode Static Analysis pipeline scan - GitHub action
GitHub action for submitting a pipeline scan with Veracode Static Analysis

This action can be used to submit a Veracode pipeline scan and returns a json result file.

This action can be used in conjunction with https://github.com/veracode/veracode-pipeline-scan-results-to-sarif to submit your static analysis results to GitHub.

<hr>

## Inputs

### `filepath`
**Required:** Filepath or folderpath of the file or directory to upload. (If the last character is a backslash it needs to be escaped: \\\\).

### `vid`
**Required:** Veracode API ID. Use GitHub Secrets Manager to store credentials

### `vkey`
**Required:** Veracode API key. Use GitHub Secrets Manager to store credentials

### `app_id`

**Optional** The Veracode platform app_id to use when submitting a pipeline scan

## Example usage

The following example will upload all files contained within the folder_to_upload to Veracode and start a static scan.

The veracode credentials are read from github secrets. NEVER STORE YOUR SECRETS IN THE REPOSITORY.

```yaml
- uses: actions/setup-java@v1 # Make java accessible on path so the uploadandscan action can run.
  with: 
    java-version: '8'
- uses: actions/upload-artifact@v2 # Copy files from repository to docker container so the pipeline scan action can access them.
  with:
    path: folder_to_upload/* # Wildcards can be used to filter the files copied into the container. See: https://github.com/actions/upload-artifact
- uses: actions/veracode-pipeline-scan-action@master # Run the pipeline scan action. Inputs are described above.
  with:
    filepath: 'folder_to_upload/'
    vid: '${{ secrets.VERACODE_ID }}'
    vkey: '${{ secrets.VERACODE_KEY }}'
```
