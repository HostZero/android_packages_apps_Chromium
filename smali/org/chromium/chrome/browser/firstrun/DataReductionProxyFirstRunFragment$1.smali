.class Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;
.super Ljava/lang/Object;
.source "DataReductionProxyFirstRunFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;

.field final synthetic val$enableDataSaverSwitch:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;Landroid/support/v7/widget/SwitchCompat;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;->val$enableDataSaverSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;->val$enableDataSaverSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->setDataReductionProxyEnabled(Landroid/content/Context;Z)V

    .line 43
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;->val$enableDataSaverSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;->val$enableDataSaverSwitch:Landroid/support/v7/widget/SwitchCompat;

    sget v1, Lorg/chromium/chrome/R$string;->data_reduction_enabled_switch:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setText(I)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;->val$enableDataSaverSwitch:Landroid/support/v7/widget/SwitchCompat;

    sget v1, Lorg/chromium/chrome/R$string;->data_reduction_disabled_switch:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setText(I)V

    goto :goto_0
.end method
