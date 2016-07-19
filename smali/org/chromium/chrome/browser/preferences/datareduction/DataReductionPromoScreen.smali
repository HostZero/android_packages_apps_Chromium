.class public Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;
.super Landroid/app/Dialog;
.source "DataReductionPromoScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 74
    sget v0, Lorg/chromium/chrome/R$style;->DataReductionPromoScreenDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 80
    sget v0, Lorg/chromium/chrome/R$id;->enable_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 83
    :cond_0
    return-void
.end method

.method private addListenerOnButton()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 98
    new-array v1, v4, [I

    sget v2, Lorg/chromium/chrome/R$id;->no_thanks_button:I

    aput v2, v1, v0

    const/4 v2, 0x1

    sget v3, Lorg/chromium/chrome/R$id;->enable_button:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lorg/chromium/chrome/R$id;->close_button:I

    aput v3, v1, v2

    .line 104
    :goto_0
    if-ge v0, v4, :cond_0

    aget v2, v1, v0

    .line 105
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method private static getContentView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    sget v1, Lorg/chromium/chrome/R$layout;->data_reduction_promo_screen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayedDataReductionPromo(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "displayed_data_reduction_promo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private handleCloseButtonPressed()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->dismiss()V

    .line 141
    return-void
.end method

.method private handleEnableButtonPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->setDataReductionProxyEnabled(Landroid/content/Context;Z)V

    .line 134
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->dismiss()V

    .line 135
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->data_reduction_enabled_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 137
    return-void
.end method

.method public static launchDataReductionPromo(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyPromoAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyManaged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getDisplayedDataReductionPromo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->getInstance()Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/multiwindow/MultiWindowUtils;->isLegacyMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->show()V

    goto :goto_0
.end method

.method public static saveDataReductionPromoDisplayed(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 170
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "displayed_data_reduction_promo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "displayed_data_reduction_promo_time_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 145
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->mState:I

    if-ge v0, v1, :cond_0

    .line 146
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->mState:I

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyUIAction(I)V

    .line 147
    iput v1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->mState:I

    .line 149
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 150
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 114
    sget v1, Lorg/chromium/chrome/R$id;->no_thanks_button:I

    if-ne v0, v1, :cond_1

    .line 115
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->handleCloseButtonPressed()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget v1, Lorg/chromium/chrome/R$id;->enable_button:I

    if-ne v0, v1, :cond_2

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->mState:I

    .line 118
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->handleEnableButtonPressed()V

    goto :goto_0

    .line 119
    :cond_2
    sget v1, Lorg/chromium/chrome/R$id;->close_button:I

    if-ne v0, v1, :cond_3

    .line 120
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->handleCloseButtonPressed()V

    goto :goto_0

    .line 122
    :cond_3
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unhandled onClick event"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 87
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 92
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->addListenerOnButton()V

    .line 94
    const/4 v0, 0x4

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->mState:I

    .line 95
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPromoScreen;->saveDataReductionPromoDisplayed(Landroid/content/Context;)V

    .line 129
    return-void
.end method
