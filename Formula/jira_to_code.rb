class JiraToCode < Formula
  desc "jira_to_code.sh is the main script which connects to jira cli,asks user for the code repository, branch, ai agent to be used and then redirects it to either codex.sh or cursor.sh . Codex.sh connected to codex cli , cursor.sh connects to cursor cli"
  homepage "https://github.com/imaresss/jira_to_code"
  # The URL you copied from your GitHub release
  url "https://github.com/imaresss/jira_to_code/archive/refs/tags/v1.0.4.tar.gz"
  # The hash you calculated in Step 1
  sha256 "3399b4e70130ca8fbadc40f21048a9718cff323f9fda2f23465f507658f87c6e"
  license "MIT" # Update this to match your actual license

  def install
    # This installs the scripts into the Homebrew binary directory.
    # The right side of the hash allows you to drop the '.sh' extension for the user.
    bin.install "jira_to_code" => "jira_to_code"
    bin.install "cursor.sh"
    bin.install "codex.sh"
  end

  test do
    # A simple test to ensure the scripts were installed successfully
    system "#{bin}/jira_to_code", "--version" 
  end
end