export owz_vendorsetup_path=vendor/windowz414/vendorsetup
echo ""
echo "//   owZ' Vendor-Setup   //"
echo "// Customized for TP1803 //"
echo ""
echo "Copying manifest for vendor tree to repo's local manifests database..." && \
cp $owz_vendorsetup_path/TP1803-vendor-tree.xml .repo/local_manifests/ && \
echo "Done! Next up..." || (echo "Oh, something happened. Aborting!" && exit 1)
echo ""
echo "Getting vendor tree..." && \
repo sync vendor/nubia/TP1803 && \
echo "All done! Good luck building!" || (echo "Oh, something happened. Aborting!" && exit 1)
echo ""
echo "Resuming process..."
