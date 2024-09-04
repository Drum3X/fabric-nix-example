# Fabric Nix Template/Example

Example of a [Fabric](https://github.com/Fabric-Development/fabric) widget packaged with Nix.


## Usage

>[!NOTE] Ensure the correct Github Repository/Branch is correct.
```
mkdir my-bar-project
cd my-bar-project
nix flake init -t github:wholikeel/fabric-nix-example#bar
nix run
```

## Integration

### Hyprland Example

Add your project as a nix flake

```
wayland.windowManager.hyprland = {
  ...
  exec-once = [
    "${inputs.my-bar-project.packages.${system}.default}/bin/bar"
  ];
  ...
};
```

