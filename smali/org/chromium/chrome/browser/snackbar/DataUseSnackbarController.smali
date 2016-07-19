.class public Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;
.super Ljava/lang/Object;
.source "DataUseSnackbarController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/snackbar/SnackbarManager;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public dismissDataUseBar()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->dismissSnackbars(Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onAction(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    packed-switch v0, :pswitch_data_0

    .line 92
    sget-boolean v0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismissNoAction(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public showDataUseTrackingEndedBar()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-static {v4}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v3}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v3}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 60
    invoke-static {v4}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    .line 61
    return-void
.end method

.method public showDataUseTrackingStartedBar()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/DataUseSnackbarController;->mSnackbarManager:Lorg/chromium/chrome/browser/snackbar/SnackbarManager;

    invoke-static {v4}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v2}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->make(Ljava/lang/CharSequence;Lorg/chromium/chrome/browser/snackbar/SnackbarManager$SnackbarController;I)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v2}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->getDataUseUIString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/chromium/chrome/browser/snackbar/Snackbar;->setAction(Ljava/lang/String;Ljava/lang/Object;)Lorg/chromium/chrome/browser/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarManager;->showSnackbar(Lorg/chromium/chrome/browser/snackbar/Snackbar;)V

    .line 49
    invoke-static {v4}, Lorg/chromium/chrome/browser/datausage/DataUseTabUIManager;->recordDataUseUIAction(I)V

    .line 50
    return-void
.end method
