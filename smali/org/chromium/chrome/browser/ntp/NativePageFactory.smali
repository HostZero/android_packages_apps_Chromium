.class public Lorg/chromium/chrome/browser/ntp/NativePageFactory;
.super Ljava/lang/Object;
.source "NativePageFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CHROME_NATIVE_SCHEME:Ljava/lang/String; = "chrome-native"

.field private static sNativePageBuilder:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->$assertionsDisabled:Z

    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->sNativePageBuilder:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static createNativePageForURL(Ljava/lang/String;Lorg/chromium/chrome/browser/NativePage;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/app/Activity;)Lorg/chromium/chrome/browser/NativePage;
    .locals 6

    .prologue
    .line 105
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->createNativePageForURL(Ljava/lang/String;Lorg/chromium/chrome/browser/NativePage;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/app/Activity;Z)Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    return-object v0
.end method

.method static createNativePageForURL(Ljava/lang/String;Lorg/chromium/chrome/browser/NativePage;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Landroid/app/Activity;Z)Lorg/chromium/chrome/browser/NativePage;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    sget-object v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory$1;->$SwitchMap$org$chromium$chrome$browser$ntp$NativePageFactory$NativePageType:[I

    invoke-static {p0, p1, p5}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->nativePageType(Ljava/lang/String;Lorg/chromium/chrome/browser/NativePage;Z)Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 134
    sget-boolean v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    move-object p1, v0

    .line 138
    :goto_0
    return-object p1

    .line 122
    :pswitch_1
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->sNativePageBuilder:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;

    invoke-virtual {v0, p4, p2, p3}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;->buildNewTabPage(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)Lorg/chromium/chrome/browser/NativePage;

    move-result-object p1

    .line 137
    :goto_1
    :pswitch_2
    invoke-interface {p1, p0}, Lorg/chromium/chrome/browser/NativePage;->updateForUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_3
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->sNativePageBuilder:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;

    invoke-virtual {v0, p4, p2}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;->buildBookmarksPage(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/NativePage;

    move-result-object p1

    goto :goto_1

    .line 128
    :pswitch_4
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->sNativePageBuilder:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;

    invoke-virtual {v0, p4, p2}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;->buildRecentTabsPage(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/NativePage;

    move-result-object p1

    goto :goto_1

    .line 131
    :pswitch_5
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->sNativePageBuilder:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;

    invoke-virtual {v0, p4}, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;->buildPhysicalWebDiagnosticsPage(Landroid/app/Activity;)Lorg/chromium/chrome/browser/NativePage;

    move-result-object p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    .line 135
    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isNativePageUrl(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->nativePageType(Ljava/lang/String;Lorg/chromium/chrome/browser/NativePage;Z)Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    move-result-object v0

    sget-object v1, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nativePageType(Ljava/lang/String;Lorg/chromium/chrome/browser/NativePage;Z)Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;
    .locals 3

    .prologue
    .line 62
    if-nez p0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    .line 87
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "chrome-native"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/chromium/chrome/browser/NativePage;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->CANDIDATE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0

    .line 74
    :cond_2
    const-string/jumbo v1, "newtab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NTP:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0

    .line 76
    :cond_3
    const-string/jumbo v1, "bookmarks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->BOOKMARKS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0

    .line 78
    :cond_4
    const-string/jumbo v1, "recent-tabs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 79
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->RECENT_TABS:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0

    .line 80
    :cond_5
    const-string/jumbo v1, "physical-web"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    const-string/jumbo v0, "PhysicalWeb"

    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->PHYSICAL_WEB:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0

    .line 84
    :cond_6
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0

    .line 87
    :cond_7
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;->NONE:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageType;

    goto :goto_0
.end method

.method static setNativePageBuilderForTesting(Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;)V
    .locals 0

    .prologue
    .line 155
    sput-object p0, Lorg/chromium/chrome/browser/ntp/NativePageFactory;->sNativePageBuilder:Lorg/chromium/chrome/browser/ntp/NativePageFactory$NativePageBuilder;

    .line 156
    return-void
.end method
