package ${packageName};

import ${superClassFqcn};
import android.os.Bundle;

import kinwind.com.kinwind.ui.base.StatuToobarActivity;
<#if includeCppSupport!false>
import android.widget.TextView;
</#if>

public class ${activityClass} extends StatuToobarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>
<#include "../../../../common/jni_code_usage.java.ftl">
    }
<#include "../../../../common/jni_code_snippet.java.ftl">


    @Override
    protected void onResume() {
        super.onResume();

        toolbartool.setTitle("${titlename}");
    }
  

}
