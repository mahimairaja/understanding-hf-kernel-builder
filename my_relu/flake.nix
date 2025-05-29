{
  description = "Flake for Torch kernel extension";

  inputs = {
    kernel-builder.url = "github:huggingface/kernel-builder";
  };
  
  outputs = { self, kernel-builder, }:
    kernel-builder.lib.genFlakeOutputs {
      path = ./.;
      rev = self.shortRev or self.dirtyShortRev or self.lastModifiedDate;
    };
}
