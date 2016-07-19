.class public Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;
.super Landroid/preference/Preference;
.source "TextAndButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;->setSelectable(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 33
    sget v0, Lorg/chromium/chrome/R$id;->preference_click_target:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 35
    new-instance v1, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
