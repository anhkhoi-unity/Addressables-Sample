using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Reflection;
using System.Reflection.Emit;
using UnityEditor;

namespace CI.AtlasEarth.Client.Editor.Game
{
	public static class AssetEnumBuilder 
	{
        public static HashSet<string> GetAssetAddresses() 
        {
            Console.WriteLine("[DEBUG]");
            Console.WriteLine(UnityEditor.AddressableAssets.AddressableAssetSettingsDefaultObject.Settings);
            var list = new HashSet<string>();
            foreach(var group in UnityEditor.AddressableAssets.AddressableAssetSettingsDefaultObject.Settings.groups)
            {
                foreach(var entry in group.entries)
                {
                    if(entry.address.IsValidCSharpIdentifier())
                    {
                        list.Add(entry.address);
                    }
                }
            }
            return list;
        }
    }
}
