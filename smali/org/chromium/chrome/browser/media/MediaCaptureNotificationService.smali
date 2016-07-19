.class public Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;
.super Landroid/app/Service;
.source "MediaCaptureNotificationService.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotifications:Landroid/util/SparseIntArray;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotifications:Landroid/util/SparseIntArray;

    return-void
.end method

.method private cancelPreviousWebRtcNotifications()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "WebRTCNotificationIds"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "MediaCaptureNotificationService"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "WebRTCNotificationIds"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static clearMediaNotifications(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 288
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "WebRTCNotificationIds"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private createNotification(IILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 149
    .line 151
    if-ne p2, v6, :cond_0

    .line 152
    sget v2, Lorg/chromium/chrome/R$string;->video_audio_call_notification_text_2:I

    .line 153
    sget v0, Lorg/chromium/chrome/R$drawable;->webrtc_video:I

    .line 162
    :goto_0
    new-instance v3, Landroid/support/v4/app/Z;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/Z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/support/v4/app/Z;->c(Z)Landroid/support/v4/app/Z;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/app/Z;->b(Z)Landroid/support/v4/app/Z;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    sget v5, Lorg/chromium/chrome/R$string;->app_name:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Z;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/Z;->a(I)Landroid/support/v4/app/Z;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/Z;->d(Z)Landroid/support/v4/app/Z;

    move-result-object v0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    invoke-static {p1}, Lorg/chromium/chrome/browser/tab/Tab;->createBringTabToFrontIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 172
    if-eqz v3, :cond_2

    .line 173
    iget-object v4, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 175
    invoke-virtual {v0, v3}, Landroid/support/v4/app/Z;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/Z;

    .line 176
    iget-object v3, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$string;->media_notification_link_text:I

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p3, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Z;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/Z;

    .line 183
    new-instance v3, Landroid/support/v4/app/Y;

    invoke-direct {v3, v0}, Landroid/support/v4/app/Y;-><init>(Landroid/support/v4/app/Z;)V

    invoke-virtual {v3, v2}, Landroid/support/v4/app/Y;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/Y;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Y;->a()Landroid/app/Notification;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v3, "MediaCaptureNotificationService"

    invoke-virtual {v2, v3, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    invoke-direct {p0, p1, v1}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->updateSharedPreferencesEntry(IZ)V

    .line 188
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 155
    sget v2, Lorg/chromium/chrome/R$string;->video_call_notification_text_2:I

    .line 156
    sget v0, Lorg/chromium/chrome/R$drawable;->webrtc_video:I

    goto/16 :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 158
    sget v2, Lorg/chromium/chrome/R$string;->audio_call_notification_text_2:I

    .line 159
    sget v0, Lorg/chromium/chrome/R$drawable;->webrtc_audio:I

    goto/16 :goto_0

    .line 179
    :cond_2
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method

.method private destroyNotification(I)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->doesNotificationExist(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "MediaCaptureNotificationService"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 138
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->updateSharedPreferencesEntry(IZ)V

    .line 140
    :cond_0
    return-void
.end method

.method private doesNotificationExist(I)Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doesNotificationNeedUpdate(II)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMediaType(ZZ)I
    .locals 1

    .prologue
    .line 233
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    .line 235
    :cond_0
    if-eqz p0, :cond_1

    .line 236
    const/4 v0, 0x3

    goto :goto_0

    .line 237
    :cond_1
    if-eqz p1, :cond_2

    .line 238
    const/4 v0, 0x2

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldStartService(Landroid/content/Context;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 245
    if-eqz p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 248
    const-string/jumbo v2, "WebRTCNotificationIds"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateMediaNotificationForTab(Landroid/content/Context;IZZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 268
    invoke-static {p2, p3}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->getMediaType(ZZ)I

    move-result v0

    .line 269
    invoke-static {p0, v0, p1}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->shouldStartService(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    const-string/jumbo v2, "NotificationId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 279
    :goto_1
    const-string/jumbo v2, "NotificationMediaUrl"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string/jumbo v2, "NotificationMediaType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 277
    :catch_0
    move-exception v2

    const-string/jumbo v2, "MediaCapture"

    const-string/jumbo v3, "Error parsing the webrtc url, %s "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private updateNotification(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->doesNotificationExist(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->doesNotificationNeedUpdate(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->destroyNotification(I)V

    .line 124
    if-eqz p2, :cond_2

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->createNotification(IILjava/lang/String;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotifications:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->stopSelf()V

    goto :goto_0
.end method

.method private updateSharedPreferencesEntry(IZ)V
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "WebRTCNotificationIds"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 199
    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    const-string/jumbo v2, "WebRTCNotificationIds"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void

    .line 202
    :cond_1
    if-nez p2, :cond_0

    .line 203
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 59
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->cancelPreviousWebRtcNotifications()V

    .line 213
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 214
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->cancelPreviousWebRtcNotifications()V

    .line 84
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->stopSelf()V

    .line 91
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 86
    :cond_1
    const-string/jumbo v0, "NotificationId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "NotificationMediaType"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "NotificationMediaUrl"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->updateNotification(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->cancelPreviousWebRtcNotifications()V

    .line 219
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
