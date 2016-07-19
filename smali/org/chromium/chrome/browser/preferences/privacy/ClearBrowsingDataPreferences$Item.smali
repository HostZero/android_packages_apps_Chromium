.class Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;
.super Ljava/lang/Object;
.source "ClearBrowsingDataPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge$BrowsingDataCounterCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

.field private mCounter:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;

.field private final mOption:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

.field private final mParent:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

.field private mShouldAnnounceCounterResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;ZZ)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mParent:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    .line 55
    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mOption:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 56
    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mOption:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->getDataType()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;-><init>(Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge$BrowsingDataCounterCallback;I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCounter:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v0, p5}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCounter:Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/BrowsingDataCounterBridge;->destroy()V

    .line 67
    return-void
.end method

.method public getOption()Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mOption:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCounterFinished(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 91
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mShouldAnnounceCounterResult:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mParent:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->updateButtonState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;->access$000(Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences;)V

    .line 82
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mShouldAnnounceCounterResult:Z

    .line 83
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mOption:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->getDataType()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mCheckbox:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setBrowsingDataDeletionPreference(IZ)V

    .line 85
    return v3
.end method

.method public setShouldAnnounceCounterResult(Z)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$Item;->mShouldAnnounceCounterResult:Z

    .line 103
    return-void
.end method
