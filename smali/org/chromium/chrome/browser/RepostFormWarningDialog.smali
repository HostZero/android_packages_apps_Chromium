.class public Lorg/chromium/chrome/browser/RepostFormWarningDialog;
.super Landroid/app/DialogFragment;
.source "RepostFormWarningDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCurrentDialog:Landroid/app/Dialog;


# instance fields
.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;

.field private final mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    iput-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 33
    iput-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/RepostFormWarningDialog$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog$1;-><init>(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method public static getCurrentDialogForTesting()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->sCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private static setCurrentDialogForTesting(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 109
    sput-object p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->sCurrentDialog:Landroid/app/Dialog;

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->dismiss()V

    .line 60
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/chromium/chrome/R$string;->http_post_warning:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    if-nez p1, :cond_1

    .line 69
    sget-boolean v1, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    new-instance v2, Lorg/chromium/chrome/browser/RepostFormWarningDialog$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog$2;-><init>(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 78
    sget v1, Lorg/chromium/chrome/R$string;->http_post_warning_resend:I

    new-instance v2, Lorg/chromium/chrome/browser/RepostFormWarningDialog$3;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog$3;-><init>(Lorg/chromium/chrome/browser/RepostFormWarningDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->setCurrentDialogForTesting(Landroid/app/Dialog;)V

    .line 91
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->setCurrentDialogForTesting(Landroid/app/Dialog;)V

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Lorg/chromium/chrome/browser/RepostFormWarningDialog;->mTabObserver:Lorg/chromium/chrome/browser/tab/TabObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 102
    :cond_0
    return-void
.end method
