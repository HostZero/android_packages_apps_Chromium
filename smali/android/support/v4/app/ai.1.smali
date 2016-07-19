.class Landroid/support/v4/app/ai;
.super Landroid/support/v4/app/ac;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;
    .locals 23

    .prologue
    .line 592
    new-instance v1, Landroid/support/v4/app/ar;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/Z;->q:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/Z;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/Z;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/Z;->f:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/Z;->d:Landroid/app/PendingIntent;

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/Z;->e:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/Z;->j:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/Z;->k:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/Z;->l:Z

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->g:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->n:Z

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v1 .. v22}, Landroid/support/v4/app/ar;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 598
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Landroid/support/v4/app/U;Ljava/util/ArrayList;)V

    .line 599
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->i:Landroid/support/v4/app/ak;

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Lcom/google/ipc/invalidation/ticl/a/E;Landroid/support/v4/app/ak;)V

    .line 1471
    invoke-interface {v1}, Lcom/google/ipc/invalidation/ticl/a/E;->b()Landroid/app/Notification;

    move-result-object v1

    .line 600
    return-object v1
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 605
    invoke-static {p1}, Landroid/support/v4/app/aq;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
