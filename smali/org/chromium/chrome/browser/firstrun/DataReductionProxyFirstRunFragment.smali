.class public Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;
.super Lorg/chromium/chrome/browser/firstrun/FirstRunPage;
.source "DataReductionProxyFirstRunFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 27
    sget v0, Lorg/chromium/chrome/R$layout;->fre_data_reduction_proxy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->onStart()V

    .line 66
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->saveDataReductionPromoDisplayed(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    sget v0, Lorg/chromium/chrome/R$id;->enable_data_saver_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 36
    sget v1, Lorg/chromium/chrome/R$id;->next_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 38
    new-instance v2, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$1;-><init>(Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v2, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment$2;-><init>(Lorg/chromium/chrome/browser/firstrun/DataReductionProxyFirstRunFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 59
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->setDataReductionProxyEnabled(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method
