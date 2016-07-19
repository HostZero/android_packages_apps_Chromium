.class public Lorg/chromium/ui/base/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    .line 36
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 38
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 129
    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/ui/base/Clipboard;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/ui/base/Clipboard;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/Clipboard;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getCoercedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHTMLText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHTMLText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    const-string/jumbo v0, "html"

    invoke-static {v0, p2, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 119
    return-void
.end method

.method private setPrimaryClipNoException(Landroid/content/ClipData;)V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/ui/R$string;->copy_to_clipboard_failure_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 106
    return-void
.end method
