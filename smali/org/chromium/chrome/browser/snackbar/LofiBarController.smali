.class public Lorg/chromium/chrome/browser/snackbar/LofiBarController;
.super Ljava/lang/Object;
.source "LofiBarController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisabled:Z

.field private mLoFiPopupShownForPageLoad:Z

.field private final mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

.field private mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mLoFiPopupShownForPageLoad:Z

    .line 43
    iput-object p2, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-lo-fi-snackbar"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mDisabled:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/snackbar/LofiBarController;Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->showLoFiBar(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/snackbar/LofiBarController;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->dismissLoFiBar()V

    return-void
.end method

.method private dismissLoFiBar()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 116
    :cond_0
    return-void
.end method

.method private showLoFiBar(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 96
    iget-object v3, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    sget v0, Lorg/chromium/chrome/R$string;->data_reduction_lo_fi_preview_snackbar_message:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    iget-object v4, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    sget v0, Lorg/chromium/chrome/R$string;->data_reduction_lo_fi_preview_snackbar_action:I

    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    iget-object v5, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-static {v3, p0, v1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v3

    if-eqz p2, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setDuration(I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 106
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->incrementLoFiSnackbarShown()V

    .line 107
    invoke-static {v2}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyLoFiUIAction(I)V

    goto :goto_0

    .line 96
    :cond_1
    sget v0, Lorg/chromium/chrome/R$string;->data_reduction_lo_fi_snackbar_message:I

    goto :goto_1

    .line 99
    :cond_2
    sget v0, Lorg/chromium/chrome/R$string;->data_reduction_lo_fi_snackbar_action:I

    goto :goto_2

    :cond_3
    move v0, v2

    .line 103
    goto :goto_3
.end method


# virtual methods
.method public maybeCreateLoFiBar(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mLoFiPopupShownForPageLoad:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mLoFiPopupShownForPageLoad:Z

    .line 66
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;

    invoke-direct {v0, p0, p2}, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;-><init>(Lorg/chromium/chrome/browser/snackbar/LofiBarController;Z)V

    .line 84
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->showLoFiBar(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0
.end method

.method public onAction(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 125
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 126
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 135
    sget-boolean v0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reloadDisableLoFi()V

    .line 139
    :cond_1
    :goto_1
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->incrementLoFiUserRequestsForImages()V

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionProxyUma;->dataReductionProxyLoFiUIAction(I)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reloadLoFiImages()V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public resetLoFiPopupShownForPageLoad()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->mLoFiPopupShownForPageLoad:Z

    .line 53
    return-void
.end method
