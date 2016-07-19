.class public Lorg/chromium/chrome/browser/preferences/ButtonPreference;
.super Landroid/preference/Preference;
.source "ButtonPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget v0, Lorg/chromium/chrome/R$layout;->preference_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->setLayoutResource(I)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->setSelectable(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 36
    sget v0, Lorg/chromium/chrome/R$id;->button_preference:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 37
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v1, Lorg/chromium/chrome/browser/preferences/ButtonPreference$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/preferences/ButtonPreference$1;-><init>(Lorg/chromium/chrome/browser/preferences/ButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
