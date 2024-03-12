{...}:
{
      programs.git = {
        enable = true;
        aliases = {
            lg = "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches";
            co = "checkout";
            cb = "checkout -t -b";
            b = "!git branch -vv";
            fm = "fetch origin main:main";
            a = "add -A .";
            c = "commit -am '' --allow-empty-message";
            ca = "commit -a --amend --no-edit";
            smartcommit = "!git add -A . && git commit -am '' --allow-empty-message";
           squash = "!git reset --soft $(git merge-base HEAD main) && git commit -am '' --allow-empty-message";
           squashrebase = "!git squash && git fetch origin main:main && git rebase main";
           smart = "!git smartcommit && git squashrebase";
        };
        includes = [
            {
                condition = "gitdir:~/Code/";
                contents.user = {
                    email = "recoeur@proton.me";
                    name = "Alex Gravem";
                };
            }
            {
                condition = "gitdir:~/Work/";
                contents.user = {
                    email = "a@edgee.cloud";
                    name = "Alex Gravem";
                };
            }
        ];
      };
}
