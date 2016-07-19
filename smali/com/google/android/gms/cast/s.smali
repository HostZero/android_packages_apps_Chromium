.class public final Lcom/google/android/gms/cast/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/cast/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/cast/r;-><init>(Lcom/google/android/gms/cast/o;B)V

    iput-object v0, p0, Lcom/google/android/gms/cast/s;->a:Lcom/google/android/gms/cast/r;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/cast/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->a:Lcom/google/android/gms/cast/r;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/r;->b()V

    iget-object v0, p0, Lcom/google/android/gms/cast/s;->a:Lcom/google/android/gms/cast/r;

    return-object v0
.end method
