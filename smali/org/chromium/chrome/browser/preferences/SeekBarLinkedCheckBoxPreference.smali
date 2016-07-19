.class public Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SeekBarLinkedCheckBoxPreference.java"


# instance fields
.field private mCheckable:Landroid/widget/Checkable;

.field private mLinkedSeekBarPreference:Lorg/chromium/chrome/browser/preferences/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->mLinkedSeekBarPreference:Lorg/chromium/chrome/browser/preferences/SeekBarPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->mLinkedSeekBarPreference:Lorg/chromium/chrome/browser/preferences/SeekBarPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->isTrackingTouch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    :cond_0
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->notifyChanged()V

    .line 48
    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 29
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->mCheckable:Landroid/widget/Checkable;

    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->mCheckable:Landroid/widget/Checkable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 31
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 37
    :cond_0
    return-void
.end method

.method public setLinkedSeekBarPreference(Lorg/chromium/chrome/browser/preferences/SeekBarPreference;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarLinkedCheckBoxPreference;->mLinkedSeekBarPreference:Lorg/chromium/chrome/browser/preferences/SeekBarPreference;

    .line 41
    return-void
.end method
