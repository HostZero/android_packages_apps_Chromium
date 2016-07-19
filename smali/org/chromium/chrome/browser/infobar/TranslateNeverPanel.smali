.class public Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;
.super Ljava/lang/Object;
.source "TranslateNeverPanel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;


# instance fields
.field private final mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

.field private final mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/SubPanelListener;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    .line 20
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;->mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

    .line 21
    return-void
.end method


# virtual methods
.method public createContent(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 25
    sget v0, Lorg/chromium/chrome/R$string;->translate_never_translate_message_text:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    sget v0, Lorg/chromium/chrome/R$string;->translate_never_translate_site:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->translate_never_translate_language:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->toggleNeverTranslateDomainState(Z)Z

    .line 41
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;->mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/SubPanelListener;->onPanelClosed(I)V

    .line 42
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateNeverPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->toggleNeverTranslateLanguageState(Z)Z

    goto :goto_0
.end method
