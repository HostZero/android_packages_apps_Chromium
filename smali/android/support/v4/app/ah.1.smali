.class final Landroid/support/v4/app/ah;
.super Landroid/support/v4/app/ac;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;
    .locals 14

    .prologue
    .line 580
    new-instance v0, Landroid/support/v4/app/ap;

    iget-object v1, p1, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    iget-object v3, p1, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/Z;->f:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    const/4 v9, 0x0

    iget-object v10, p1, Landroid/support/v4/app/Z;->e:Landroid/graphics/Bitmap;

    iget v11, p1, Landroid/support/v4/app/Z;->j:I

    iget v12, p1, Landroid/support/v4/app/Z;->k:I

    iget-boolean v13, p1, Landroid/support/v4/app/Z;->l:Z

    invoke-direct/range {v0 .. v13}, Landroid/support/v4/app/ap;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 1471
    invoke-interface {v0}, Lcom/google/ipc/invalidation/ticl/a/E;->b()Landroid/app/Notification;

    move-result-object v0

    .line 585
    return-object v0
.end method
