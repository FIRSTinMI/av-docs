require "html-proofer"

task :proofer do
    HTMLProofer.check_directory("./_site", {
        ignore_urls: [
            /github\.com\/firstinmi\/av-docs/,
            /\:\/\/localhost/,
            /\:\/\/docs.fimav.us/
        ],
        ignore_status_codes: [ 403 ] # Reconsider this later. Temp fix for driver links
    }).run
end