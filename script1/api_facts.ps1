# Define the URL of the API endpoint
$url = "https://uselessfacts.jsph.pl/api/v2/facts/random?language=en"

try {
    # Invoke the API endpoint and convert the JSON response to a PowerShell object
    $response = Invoke-RestMethod -Uri $url -Method Get -ContentType "application/json"

    # Display the text value from the JSON reply
    Write-Host $response.text
}
catch {
    # Handle any errors that occur during the API call
    Write-Host "An error occurred while calling the API: $_"
}