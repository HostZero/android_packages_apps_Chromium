.class public final Lcom/google/android/gms/common/stats/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/common/stats/WakeLockEvent;Landroid/os/Parcel;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->a()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->e()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;ILjava/util/List;)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->i()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->b()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->j()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->l()F

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;F)V

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/WakeLockEvent;->m()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/a/j;->n(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 21

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;)I

    move-result v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v20, 0xffff

    and-int v20, v20, v3

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->c(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->e(Landroid/os/Parcel;I)J

    move-result-wide v5

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->c(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->m(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->e(Landroid/os/Parcel;I)J

    move-result-wide v12

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->c(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->j(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->c(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_0

    :pswitch_c
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->g(Landroid/os/Parcel;I)F

    move-result v17

    goto :goto_0

    :pswitch_d
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/a/j;->e(Landroid/os/Parcel;I)J

    move-result-wide v18

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_1

    new-instance v3, Landroid/support/v4/app/u;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Overread allowed size end="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Landroid/support/v4/app/u;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v3

    :cond_1
    new-instance v3, Lcom/google/android/gms/common/stats/WakeLockEvent;

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJ)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/common/stats/WakeLockEvent;

    return-object v0
.end method