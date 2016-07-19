.class public Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;
.super Ljava/lang/Object;
.source "ContentSettingsResources.java"


# static fields
.field private static sResourceInfo:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getCategorySummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I

    move-result v0

    return v0
.end method

.method public static getCategorySummary(IZ)I
    .locals 1

    .prologue
    .line 223
    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getDefaultEnabledValue(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getCategorySummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getDefaultDisabledValue(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCategorySummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$1;->$SwitchMap$org$chromium$chrome$browser$preferences$website$ContentSetting:[I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 208
    :pswitch_0
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_category_allowed:I

    goto :goto_0

    .line 210
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_category_blocked:I

    goto :goto_0

    .line 212
    :pswitch_2
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_category_ask:I

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCookieAllowedExceptThirdPartySummary()I
    .locals 1

    .prologue
    .line 269
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_category_allowed_except_third_party:I

    return v0
.end method

.method public static getDefaultDisabledValue(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 198
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getDefaultDisabledValue()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->access$500(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultEnabledValue(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 189
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getDefaultEnabledValue()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->access$400(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    return-object v0
.end method

.method public static getDisabledSummary(I)I
    .locals 1

    .prologue
    .line 254
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getDisabledSummary()I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->access$700(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I

    move-result v0

    return v0
.end method

.method public static getEnabledSummary(I)I
    .locals 1

    .prologue
    .line 247
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getEnabledSummary()I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->access$600(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I

    move-result v0

    return v0
.end method

.method public static getExplanation(I)I
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getExplanation()I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->access$300(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I

    move-result v0

    return v0
.end method

.method public static getGeolocationAllowedSummary()I
    .locals 1

    .prologue
    .line 261
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_category_allowed:I

    return v0
.end method

.method public static getIcon(I)I
    .locals 1

    .prologue
    .line 164
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getIcon()I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->access$100(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I

    move-result v0

    return v0
.end method

.method private static getResourceInfo()Ljava/util/Map;
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 87
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 88
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->sResourceInfo:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 89
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v1, Lorg/chromium/chrome/R$drawable;->permission_cookie:I

    sget v2, Lorg/chromium/chrome/R$string;->cookies_title:I

    sget v3, Lorg/chromium/chrome/R$string;->cookies_title:I

    sget-object v4, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v6, Lorg/chromium/chrome/R$string;->website_settings_category_cookie_allowed:I

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v2, Lorg/chromium/chrome/R$drawable;->permission_fullscreen:I

    sget v3, Lorg/chromium/chrome/R$string;->website_settings_fullscreen:I

    sget v4, Lorg/chromium/chrome/R$string;->fullscreen_permission_title:I

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v6, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v8, Lorg/chromium/chrome/R$string;->website_settings_category_ask_first_recommended:I

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v1, Lorg/chromium/chrome/R$drawable;->permission_location:I

    sget v2, Lorg/chromium/chrome/R$string;->website_settings_device_location:I

    sget v3, Lorg/chromium/chrome/R$string;->geolocation_permission_title:I

    sget-object v4, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v6, Lorg/chromium/chrome/R$string;->website_settings_category_ask_before_accessing:I

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v1, Lorg/chromium/chrome/R$drawable;->permission_javascript:I

    sget v2, Lorg/chromium/chrome/R$string;->javascript_permission_title:I

    sget v3, Lorg/chromium/chrome/R$string;->javascript_permission_title:I

    sget-object v4, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v6, Lorg/chromium/chrome/R$string;->website_settings_category_allowed_recommended:I

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v1, Lorg/chromium/chrome/R$drawable;->permission_camera:I

    sget v2, Lorg/chromium/chrome/R$string;->website_settings_use_camera:I

    sget v3, Lorg/chromium/chrome/R$string;->camera_permission_title:I

    sget-object v4, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v6, Lorg/chromium/chrome/R$string;->website_settings_category_ask_before_accessing:I

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v1, Lorg/chromium/chrome/R$drawable;->permission_mic:I

    sget v2, Lorg/chromium/chrome/R$string;->website_settings_use_mic:I

    sget v3, Lorg/chromium/chrome/R$string;->mic_permission_title:I

    sget-object v4, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v6, Lorg/chromium/chrome/R$string;->website_settings_category_ask_before_accessing:I

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v6, Lorg/chromium/chrome/R$drawable;->permission_midi:I

    sget v8, Lorg/chromium/chrome/R$string;->midi_sysex_permission_title:I

    move-object v10, v9

    move v11, v7

    move v12, v7

    invoke-direct/range {v5 .. v12}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v1, Lorg/chromium/chrome/R$drawable;->permission_push_notification:I

    sget v2, Lorg/chromium/chrome/R$string;->push_notifications_permission_title:I

    sget v3, Lorg/chromium/chrome/R$string;->push_notifications_permission_title:I

    sget-object v4, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v6, Lorg/chromium/chrome/R$string;->website_settings_category_ask_before_sending:I

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v2, Lorg/chromium/chrome/R$drawable;->permission_popups:I

    sget v3, Lorg/chromium/chrome/R$string;->popup_permission_title:I

    sget v4, Lorg/chromium/chrome/R$string;->popup_permission_title:I

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v6, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v8, Lorg/chromium/chrome/R$string;->website_settings_category_blocked_recommended:I

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v2, Lorg/chromium/chrome/R$drawable;->permission_protected_media:I

    sget v3, Lorg/chromium/chrome/R$string;->protected_content:I

    sget v4, Lorg/chromium/chrome/R$string;->protected_content:I

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ASK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v6, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move v8, v7

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    sget v2, Lorg/chromium/chrome/R$drawable;->permission_keygen:I

    sget v3, Lorg/chromium/chrome/R$string;->keygen_permission_title:I

    sget v4, Lorg/chromium/chrome/R$string;->keygen_permission_title:I

    sget-object v5, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ALLOW:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget-object v6, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->BLOCK:Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    sget v8, Lorg/chromium/chrome/R$string;->website_settings_category_blocked_recommended:I

    invoke-direct/range {v1 .. v8}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;-><init>(IIILorg/chromium/chrome/browser/preferences/website/ContentSetting;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;II)V

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sput-object v13, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->sResourceInfo:Ljava/util/Map;

    .line 150
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->sResourceInfo:Ljava/util/Map;

    return-object v0
.end method

.method private static getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    return-object v0
.end method

.method public static getSiteSummary(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)I
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$1;->$SwitchMap$org$chromium$chrome$browser$preferences$website$ContentSetting:[I

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 235
    :pswitch_0
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_permissions_allow:I

    goto :goto_0

    .line 237
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$string;->website_settings_permissions_block:I

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTitle(I)I
    .locals 1

    .prologue
    .line 172
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources;->getResourceItem(I)Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->getTitle()I
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;->access$200(Lorg/chromium/chrome/browser/preferences/website/ContentSettingsResources$ResourceItem;)I

    move-result v0

    return v0
.end method
