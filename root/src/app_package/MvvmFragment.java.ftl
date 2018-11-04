package ${packageName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
<#if applicationPackage??>
import ${applicationPackage}.${bindingName};
</#if>

public class ${className} extends ${baseFragmentClassName} {

    private ${bindingName} binding;
    private ${viewModelName} viewModel;

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        binding = ${bindingName}.inflate(inflater);
        viewModel = ViewModelProviders.of(this).get(${viewModelName}.class);

        binding.setViewModel(viewModel)

        return binding.getRoot();
    }

    public static ${className} newInstance() {
        return new ${className}();
    }

}
