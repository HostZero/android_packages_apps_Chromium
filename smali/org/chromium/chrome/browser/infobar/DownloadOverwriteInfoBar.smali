.class public Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "DownloadOverwriteInfoBar.java"


# instance fields
.field private final mDirFullPath:Ljava/lang/String;

.field private final mDirName:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sget v0, Lorg/chromium/chrome/R$drawable;->infobar_downloading:I

    invoke-direct {p0, v0, v1, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->mFileName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->mDirName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->mDirFullPath:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private static canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 124
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static createInfoBar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static formatInfoBarMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {p0, p4}, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v2, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar$1;

    invoke-direct {v2, p0, p4}, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {p1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getIntentForDirectoryLaunch(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const-string/jumbo v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getMessageText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 61
    sget v0, Lorg/chromium/chrome/R$string;->download_overwrite_infobar_text:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->mDirFullPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->getIntentForDirectoryLaunch(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->mDirName:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3, v1}, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->formatInfoBarMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->getMessageText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 85
    sget v1, Lorg/chromium/chrome/R$string;->download_overwrite_infobar_replace_file_button:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->download_overwrite_infobar_create_new_file_button:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 1

    .prologue
    .line 55
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 57
    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/DownloadOverwriteInfoBar;->onButtonClicked(I)V

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method
