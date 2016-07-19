.class public Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;
.super Landroid/preference/DialogPreference;
.source "SearchEnginePreference.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;


# static fields
.field static final PREF_SEARCH_ENGINE:Ljava/lang/String; = "search_engine"


# instance fields
.field private mSearchEngineAdapter:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->setEnabled(Z)V

    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter$SelectSearchEngineCallback;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->mSearchEngineAdapter:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;

    .line 30
    return-void
.end method


# virtual methods
.method public currentSearchEngineDetermined(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->setEnabled(Z)V

    .line 66
    return-void
.end method

.method getValueForTesting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->mSearchEngineAdapter:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->getValueForTesting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDismissDialog()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 71
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 55
    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->close:I

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->mSearchEngineAdapter:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    return-void
.end method

.method setValueForTesting(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SearchEnginePreference;->mSearchEngineAdapter:Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/SearchEngineAdapter;->setValueForTesting(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public showDialog()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method
