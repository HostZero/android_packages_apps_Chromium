.class public final Lcom/google/android/gms/auth/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/auth/AccountChangeEventsResponse;Landroid/os/Parcel;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->b(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEventsResponse;->b:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/api/a/j;->b(Landroid/os/Parcel;ILjava/util/List;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/a/j;->n(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 0
    .line 2000
    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    packed-switch v4, :pswitch_data_0

    invoke-static {p1, v3}, Lcom/google/android/gms/common/api/a/j;->a(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v3}, Lcom/google/android/gms/common/api/a/j;->c(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/auth/AccountChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/common/api/a/j;->c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_1

    new-instance v0, Landroid/support/v4/app/u;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Overread allowed size end="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/app/u;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/auth/AccountChangeEventsResponse;-><init>(ILjava/util/List;)V

    .line 0
    return-object v2

    .line 2000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 0
    .line 1000
    new-array v0, p1, [Lcom/google/android/gms/auth/AccountChangeEventsResponse;

    .line 0
    return-object v0
.end method