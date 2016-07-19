.class Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$1;
.super Ljava/lang/Object;
.source "DataReductionPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;

.field final synthetic val$dataReductionSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$1;->val$dataReductionSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$1;->val$dataReductionSwitch:Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->setDataReductionProxyEnabled(Landroid/content/Context;Z)V

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;->updatePreferences(Z)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method
