.class public Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;
.super Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;
.source "StandardNotificationBuilder.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 4

    .prologue
    .line 24
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mBody:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mOrigin:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mTickerText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 30
    iget v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mSmallIconId:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mSmallIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->setSmallIconOnBuilder(Landroid/app/Notification$Builder;ILandroid/graphics/Bitmap;)V

    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mDeleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    .line 34
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->addActionToBuilder(Landroid/app/Notification$Builder;Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mSettingsAction:Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->addActionToBuilder(Landroid/app/Notification$Builder;Lorg/chromium/chrome/browser/notifications/NotificationBuilderBase$Action;)V

    .line 39
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mDefaults:I

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mVibratePattern:[J

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 41
    iget-wide v2, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 42
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/notifications/StandardNotificationBuilder;->mRenotify:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 43
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
