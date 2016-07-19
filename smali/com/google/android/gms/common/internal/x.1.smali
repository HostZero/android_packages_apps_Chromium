.class final Lcom/google/android/gms/common/internal/x;
.super Lcom/google/android/gms/common/internal/t;


# instance fields
.field private synthetic b:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    iput-char p1, p0, Lcom/google/android/gms/common/internal/x;->b:C

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/t;)Lcom/google/android/gms/common/internal/t;
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/common/internal/x;->b:C

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/t;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/t;->a(Lcom/google/android/gms/common/internal/t;)Lcom/google/android/gms/common/internal/t;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(C)Z
    .locals 1

    iget-char v0, p0, Lcom/google/android/gms/common/internal/x;->b:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
