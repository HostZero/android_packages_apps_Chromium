.class public Lorg/chromium/chrome/browser/webapps/WebappInfo;
.super Ljava/lang/Object;
.source "WebappInfo.java"


# instance fields
.field private mBackgroundColor:J

.field private mDecodedIcon:Landroid/graphics/Bitmap;

.field private mEncodedIcon:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIsIconGenerated:Z

.field private mIsInitialized:Z

.field private mName:Ljava/lang/String;

.field private mOrientation:I

.field private mShortName:Ljava/lang/String;

.field private mSource:I

.field private mThemeColor:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p3, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mEncodedIcon:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mId:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mName:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mShortName:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mUri:Landroid/net/Uri;

    .line 117
    iput p6, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mOrientation:I

    .line 118
    iput p7, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mSource:I

    .line 119
    iput-wide p8, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mThemeColor:J

    .line 120
    iput-wide p10, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mBackgroundColor:J

    .line 121
    iput-boolean p12, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsIconGenerated:Z

    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsInitialized:Z

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Intent;)Lorg/chromium/chrome/browser/webapps/WebappInfo;
    .locals 13

    .prologue
    const-wide v10, 0x80000000L

    const/4 v4, 0x0

    .line 61
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_id"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_icon"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_url"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string/jumbo v0, "org.chromium.content_public.common.orientation"

    invoke-static {p0, v0, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    .line 66
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_source"

    invoke-static {p0, v0, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v7

    .line 68
    const-string/jumbo v0, "org.chromium.chrome.browser.theme_color"

    invoke-static {p0, v0, v10, v11}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v8

    .line 71
    const-string/jumbo v0, "org.chromium.chrome.browser.background_color"

    invoke-static {p0, v0, v10, v11}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v10

    .line 74
    const-string/jumbo v0, "org.chromium.chrome.browser.is_icon_generated"

    invoke-static {p0, v0, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v12

    .line 77
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->nameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->shortNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static/range {v1 .. v12}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)Lorg/chromium/chrome/browser/webapps/WebappInfo;
    .locals 13

    .prologue
    .line 99
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 100
    :cond_0
    const-string/jumbo v0, "WebappInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Data passed in was incomplete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 104
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 105
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappInfo;

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/chromium/chrome/browser/webapps/WebappInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V

    goto :goto_0
.end method

.method public static createEmpty()Lorg/chromium/chrome/browser/webapps/WebappInfo;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/webapps/WebappInfo;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;-><init>()V

    return-object v0
.end method

.method public static nameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_name"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->titleFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static shortNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_short_name"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->titleFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static titleFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_title"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method


# virtual methods
.method public backgroundColor(I)I
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->hasValidBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mBackgroundColor:J

    long-to-int p1, v0

    :cond_0
    return p1
.end method

.method public backgroundColor()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mBackgroundColor:J

    return-wide v0
.end method

.method copy(Lorg/chromium/chrome/browser/webapps/WebappInfo;)V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsInitialized:Z

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsInitialized:Z

    .line 134
    iget-object v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mEncodedIcon:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mEncodedIcon:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mDecodedIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mDecodedIcon:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mId:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mUri:Landroid/net/Uri;

    .line 138
    iget-object v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mName:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mShortName:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mShortName:Ljava/lang/String;

    .line 140
    iget v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mOrientation:I

    iput v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mOrientation:I

    .line 141
    iget v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mSource:I

    iput v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mSource:I

    .line 142
    iget-wide v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mThemeColor:J

    iput-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mThemeColor:J

    .line 143
    iget-wide v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mBackgroundColor:J

    iput-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mBackgroundColor:J

    .line 144
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsIconGenerated:Z

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsIconGenerated:Z

    .line 145
    return-void
.end method

.method public encodedIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mEncodedIcon:Ljava/lang/String;

    return-object v0
.end method

.method public hasValidBackgroundColor()Z
    .locals 4

    .prologue
    .line 207
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mBackgroundColor:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidThemeColor()Z
    .locals 4

    .prologue
    .line 189
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mThemeColor:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public icon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mDecodedIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mDecodedIcon:Landroid/graphics/Bitmap;

    .line 229
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mEncodedIcon:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mDecodedIcon:Landroid/graphics/Bitmap;

    .line 229
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mDecodedIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public isIconGenerated()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsIconGenerated:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mIsInitialized:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public orientation()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mOrientation:I

    return v0
.end method

.method public setWebappIntentExtras(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 244
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_id"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_url"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->uri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_icon"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->encodedIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_name"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_short_name"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->shortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string/jumbo v0, "org.chromium.content_public.common.orientation"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->orientation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string/jumbo v0, "org.chromium.chrome.browser.webapp_source"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->source()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string/jumbo v0, "org.chromium.chrome.browser.theme_color"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->themeColor()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    const-string/jumbo v0, "org.chromium.chrome.browser.background_color"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->backgroundColor()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 253
    const-string/jumbo v0, "org.chromium.chrome.browser.is_icon_generated"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappInfo;->isIconGenerated()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    return-void
.end method

.method public shortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public source()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mSource:I

    return v0
.end method

.method public themeColor()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mThemeColor:J

    return-wide v0
.end method

.method public uri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappInfo;->mUri:Landroid/net/Uri;

    return-object v0
.end method
