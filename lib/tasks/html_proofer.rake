require "html-proofer"

task :proofer do
    HTMLProofer.check_directory("./_site", { ignore_urls: [
        /github\.com\/firstinmi\/av-docs/,
        /\:\/\/localhost/,
        /\:\/\/docs.fimav.us/
    ] }).run
end