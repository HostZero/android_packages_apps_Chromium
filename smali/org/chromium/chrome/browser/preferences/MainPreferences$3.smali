.class Lorg/chromium/chrome/browser/preferences/MainPreferences$3;
.super Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
.source "MainPreferences.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$3;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreferenceClickDisabledByPolicy(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    const-string/jumbo v2, "autofill_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->isAutofillManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->isAutofillEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 203
    goto :goto_0

    .line 206
    :cond_2
    const-string/jumbo v2, "saved_passwords"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isRememberPasswordsManaged()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isRememberPasswordsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 211
    :cond_4
    const-string/jumbo v2, "data_reduction"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 212
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyManaged()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 216
    :cond_6
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;->isPreferenceClickDisabledByPolicy(Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 188
    const-string/jumbo v0, "autofill_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->isAutofillManaged()Z

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 191
    :cond_0
    const-string/jumbo v0, "saved_passwords"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isRememberPasswordsManaged()Z

    move-result v0

    goto :goto_0

    .line 194
    :cond_1
    const-string/jumbo v0, "data_reduction"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyManaged()Z

    move-result v0

    goto :goto_0

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
