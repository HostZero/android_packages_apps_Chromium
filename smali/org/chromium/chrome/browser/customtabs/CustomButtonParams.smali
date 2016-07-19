.class Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;
.super Ljava/lang/Object;
.source "CustomButtonParams.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mId:I

.field private mIsOnToolbar:Z

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private mShouldTint:Z


# direct methods
.method private constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mId:I

    .line 55
    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIcon:Landroid/graphics/Bitmap;

    .line 56
    iput-object p3, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mDescription:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mPendingIntent:Landroid/app/PendingIntent;

    .line 58
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mShouldTint:Z

    .line 59
    iput-boolean p6, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIsOnToolbar:Z

    .line 60
    return-void
.end method

.method static doesIconFitToolbar(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$dimen;->toolbar_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    mul-int/2addr v2, v1

    .line 263
    mul-int/lit8 v1, v1, 0x2

    if-gt v2, v1, :cond_0

    .line 264
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static fromBundle(Landroid/content/Context;Landroid/os/Bundle;ZZ)Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 195
    if-nez p1, :cond_0

    move-object v0, v5

    .line 231
    :goto_0
    return-object v0

    .line 197
    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, "android.support.customtabs.customaction.ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v5

    goto :goto_0

    .line 198
    :cond_1
    const-string/jumbo v1, "android.support.customtabs.customaction.ID"

    invoke-static {p1, v1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v1

    .line 201
    invoke-static {p1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->parseBitmapFromBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 202
    if-nez v2, :cond_2

    .line 203
    const-string/jumbo v1, "CustomTabs"

    const-string/jumbo v2, "Invalid action button: bitmap not present in bundle!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v5

    .line 204
    goto :goto_0

    .line 207
    :cond_2
    invoke-static {p1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->parseDescriptionFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    const-string/jumbo v1, "CustomTabs"

    const-string/jumbo v3, "Invalid action button: content description not present in bundle!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v5

    .line 211
    goto :goto_0

    .line 214
    :cond_3
    if-nez v1, :cond_5

    const/4 v6, 0x1

    .line 215
    :goto_1
    if-eqz v6, :cond_4

    invoke-static {p0, v2}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->doesIconFitToolbar(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 217
    const-string/jumbo v4, "CustomTabs"

    const-string/jumbo v6, "Button\'s icon not suitable for toolbar, putting it to bottom bar instead.See: https://developer.android.com/reference/android/support/customtabs/CustomTabsIntent.html#KEY_ICON"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v0

    .line 222
    :cond_4
    const-string/jumbo v4, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-static {p1, v4}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 225
    if-eqz v6, :cond_6

    if-nez v4, :cond_6

    .line 226
    const-string/jumbo v1, "CustomTabs"

    const-string/jumbo v3, "Invalid action button on toolbar: pending intent not present in bundle!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v5

    .line 228
    goto :goto_0

    :cond_5
    move v6, v0

    .line 214
    goto :goto_1

    .line 231
    :cond_6
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)V

    goto :goto_0
.end method

.method static fromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    if-nez p1, :cond_0

    move-object v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const-string/jumbo v0, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 162
    const-string/jumbo v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-static {p1, v2}, Lorg/chromium/chrome/browser/util/IntentUtils;->getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 164
    const-string/jumbo v3, "android.support.customtabs.extra.TINT_ACTION_BUTTON"

    invoke-static {p1, v3, v8}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    .line 166
    if-eqz v0, :cond_1

    .line 167
    invoke-static {p0, v0, v3, v8}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->fromBundle(Landroid/content/Context;Landroid/os/Bundle;ZZ)Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    if-eqz v2, :cond_4

    .line 171
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 173
    invoke-static {p0, v0, v3, v9}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->fromBundle(Landroid/content/Context;Landroid/os/Bundle;ZZ)Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 177
    const-string/jumbo v5, "CustomTabs"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Bottom bar items contain duplicate id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getId()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 184
    goto :goto_0
.end method

.method static parseBitmapFromBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    if-nez p0, :cond_1

    move-object v0, v1

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :cond_1
    const-string/jumbo v0, "android.support.customtabs.customaction.ICON"

    invoke-static {p0, v0}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 241
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method static parseDescriptionFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 250
    if-nez p0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    const-string/jumbo v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-static {p0, v1}, Lorg/chromium/chrome/browser/util/IntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 253
    goto :goto_0
.end method


# virtual methods
.method buildBottomBarButton(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/ImageButton;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIsOnToolbar:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 120
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->custom_tabs_bottombar_item:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 122
    iget v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 123
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 130
    :goto_1
    new-instance v1, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams$1;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mShouldTint:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mId:I

    return v0
.end method

.method getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method showOnToolbar()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIsOnToolbar:Z

    return v0
.end method

.method update(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mIcon:Landroid/graphics/Bitmap;

    .line 67
    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->mDescription:Ljava/lang/String;

    .line 68
    return-void
.end method
