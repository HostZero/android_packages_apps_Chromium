.class final Landroid/support/v4/app/ae;
.super Landroid/support/v4/app/ad;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Landroid/support/v4/app/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Z;Landroid/support/v4/app/aa;)Landroid/app/Notification;
    .locals 29

    .prologue
    .line 761
    new-instance v1, Landroid/support/v4/app/am;

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

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/Z;->h:Z

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->g:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/Z;->n:Z

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/Z;->r:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->o:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/Z;->p:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v1 .. v28}, Landroid/support/v4/app/am;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;)V

    .line 768
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->m:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Landroid/support/v4/app/U;Ljava/util/ArrayList;)V

    .line 769
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/Z;->i:Landroid/support/v4/app/ak;

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Lcom/google/ipc/invalidation/ticl/a/E;Landroid/support/v4/app/ak;)V

    .line 1471
    invoke-interface {v1}, Lcom/google/ipc/invalidation/ticl/a/E;->b()Landroid/app/Notification;

    move-result-object v1

    .line 770
    return-object v1
.end method
