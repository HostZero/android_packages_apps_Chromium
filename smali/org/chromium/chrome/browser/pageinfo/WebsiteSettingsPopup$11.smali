.class synthetic Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$11;
.super Ljava/lang/Object;
.source "WebsiteSettingsPopup.java"


# static fields
.field static final synthetic $SwitchMap$org$chromium$chrome$browser$preferences$website$ContentSetting:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 645
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->values()[Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$11;->$SwitchMap$org$chromium$chrome$browser$preferences$website$ContentSetting:[I

    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$11;->$SwitchMap$org$chromium$chrome$browser$preferences$website$ContentSetting:[I

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lorg/chromium/chrome/browser/pageinfo/WebsiteSettingsPopup$11;->$SwitchMap$org$chromium$chrome$browser$preferences$website$ContentSetting:[I

    sget-object v1, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method