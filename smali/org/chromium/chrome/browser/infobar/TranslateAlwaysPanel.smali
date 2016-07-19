.class public Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;
.super Ljava/lang/Object;
.source "TranslateAlwaysPanel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/infobar/TranslateSubPanel;


# instance fields
.field private final mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

.field private final mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/SubPanelListener;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    .line 21
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

    .line 22
    return-void
.end method

.method static createAlwaysToggle(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addControlLayout()Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->translate_always_text:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->sourceLanguageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    sget v2, Lorg/chromium/chrome/R$id;->translate_infobar_always_toggle:I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->alwaysTranslateLanguageState()Z

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addSwitch(ILjava/lang/CharSequence;IZ)Landroid/view/View;

    .line 53
    return-void
.end method


# virtual methods
.method public createContent(Landroid/content/Context;Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 4

    .prologue
    .line 26
    sget v0, Lorg/chromium/chrome/R$string;->translate_infobar_translation_done:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->targetLanguageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/TranslateOptions;->triggeredFromMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->mOptions:Lorg/chromium/chrome/browser/infobar/TranslateOptions;

    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->createAlwaysToggle(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;Lorg/chromium/chrome/browser/infobar/TranslateOptions;)V

    .line 31
    :cond_0
    sget v0, Lorg/chromium/chrome/R$string;->translate_button_done:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->translate_show_original:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->setButtons(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/SubPanelListener;->onPanelClosed(I)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateAlwaysPanel;->mListener:Lorg/chromium/chrome/browser/infobar/SubPanelListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/infobar/SubPanelListener;->onPanelClosed(I)V

    goto :goto_0
.end method
