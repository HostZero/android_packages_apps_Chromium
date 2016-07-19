.class Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$2;
.super Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
.source "DataReductionPreferences.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/datareduction/DataReductionPreferences;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-spdy-proxy-auth"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->getInstance()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->isDataReductionProxyManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
