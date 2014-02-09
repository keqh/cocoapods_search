PodLibrary.find_each(batch_size: 20) do |pod|
  puts "Checking #{pod.name}"
  success = pod.fetch_github_repo_data(update_repo: false, update_commits: false, update_contributors: false, update_releases: false)
  puts "Failed #{pod.name}" unless success
  # sleep 0.4
end
