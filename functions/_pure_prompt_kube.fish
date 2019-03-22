function _pure_prompt_kube
    set --query --global kubeenv
    or set --local kubeenv (kubectl config current-context 2>/dev/null | grep -v dev)
    set --local kubeenv_color "$pure_color_kube"

    echo "$kubeenv_color$kubeenv"

end
