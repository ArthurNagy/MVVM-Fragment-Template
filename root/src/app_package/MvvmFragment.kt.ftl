package ${escapeKotlinIdentifiers(packageName)}

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

<#if applicationPackage??>
import ${applicationPackage}.${bindingName}
</#if>

class ${className} : ${baseFragmentClassName}() {

    private lateinit var binding: ${bindingName}
    private lateinit var viewModel: ${viewModelName}

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,savedInstanceState: Bundle?): View? {
        binding = ${bindingName}.inflate(inflater)
        viewModel = ViewModelProviders.of(this).get(${viewModelName}::class.java)
        
        binding.viewModel = viewModel

        return binding.root
    }

    companion object {
        fun newInstance() = ${className}()
    }

}
