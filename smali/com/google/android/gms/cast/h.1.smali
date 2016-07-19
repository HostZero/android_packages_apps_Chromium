.class public final Lcom/google/android/gms/cast/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field final a:Lcom/google/android/gms/cast/CastDevice;

.field final b:Lcom/google/android/gms/cast/j;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/cast/i;->a:Lcom/google/android/gms/cast/CastDevice;

    iput-object v0, p0, Lcom/google/android/gms/cast/h;->a:Lcom/google/android/gms/cast/CastDevice;

    iget-object v0, p1, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/j;

    iput-object v0, p0, Lcom/google/android/gms/cast/h;->b:Lcom/google/android/gms/cast/j;

    invoke-static {p1}, Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/cast/i;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/h;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/i;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/h;-><init>(Lcom/google/android/gms/cast/i;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/h;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/h;->c:I

    return v0
.end method
