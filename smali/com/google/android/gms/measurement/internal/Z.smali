.class final Lcom/google/android/gms/measurement/internal/Z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/measurement/internal/AppMetadata;

.field private synthetic b:Lcom/google/android/gms/measurement/internal/EventParcel;

.field private synthetic c:Lcom/google/android/gms/measurement/internal/X;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/X;Lcom/google/android/gms/measurement/internal/AppMetadata;Lcom/google/android/gms/measurement/internal/EventParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/Z;->c:Lcom/google/android/gms/measurement/internal/X;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/Z;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/Z;->b:Lcom/google/android/gms/measurement/internal/EventParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Z;->c:Lcom/google/android/gms/measurement/internal/X;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/Z;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMetadata;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/X;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Z;->c:Lcom/google/android/gms/measurement/internal/X;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/X;->a(Lcom/google/android/gms/measurement/internal/X;)Lcom/google/android/gms/measurement/internal/S;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/Z;->b:Lcom/google/android/gms/measurement/internal/EventParcel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/Z;->a:Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    return-void
.end method
