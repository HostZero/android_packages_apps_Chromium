.class public final Lcom/google/android/gms/measurement/internal/r;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/android/gms/measurement/internal/s;

.field public static b:Lcom/google/android/gms/measurement/internal/s;

.field public static c:Lcom/google/android/gms/measurement/internal/s;

.field public static d:Lcom/google/android/gms/measurement/internal/s;

.field public static e:Lcom/google/android/gms/measurement/internal/s;

.field public static f:Lcom/google/android/gms/measurement/internal/s;

.field public static g:Lcom/google/android/gms/measurement/internal/s;

.field public static h:Lcom/google/android/gms/measurement/internal/s;

.field public static i:Lcom/google/android/gms/measurement/internal/s;

.field public static j:Lcom/google/android/gms/measurement/internal/s;

.field public static k:Lcom/google/android/gms/measurement/internal/s;

.field public static l:Lcom/google/android/gms/measurement/internal/s;

.field public static m:Lcom/google/android/gms/measurement/internal/s;

.field public static n:Lcom/google/android/gms/measurement/internal/s;

.field public static o:Lcom/google/android/gms/measurement/internal/s;

.field public static p:Lcom/google/android/gms/measurement/internal/s;

.field public static q:Lcom/google/android/gms/measurement/internal/s;

.field public static r:Lcom/google/android/gms/measurement/internal/s;

.field public static s:Lcom/google/android/gms/measurement/internal/s;

.field public static t:Lcom/google/android/gms/measurement/internal/s;

.field public static u:Lcom/google/android/gms/measurement/internal/s;

.field public static v:Lcom/google/android/gms/measurement/internal/s;

.field public static w:Lcom/google/android/gms/measurement/internal/s;

.field public static x:Lcom/google/android/gms/measurement/internal/s;

.field public static y:Lcom/google/android/gms/measurement/internal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/32 v8, 0x36ee80

    const v7, 0x186a0

    const/high16 v6, 0x10000

    const-wide/32 v4, 0x5265c00

    const-string/jumbo v0, "measurement.service_enabled"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.service_client_enabled"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.log_tag"

    const-string/jumbo v1, "GMPM"

    const-string/jumbo v2, "GMPM-SVC"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->a:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.ad_id_cache_time"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.monitoring.sample_period_millis"

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->c:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.config.cache_time"

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->d:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.config.url_scheme"

    const-string/jumbo v1, "https"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->e:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.config.url_authority"

    const-string/jumbo v1, "app-measurement.com"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->f:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_bundles"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->g:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_batch_size"

    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->h:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_bundle_size"

    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->i:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_events_per_bundle"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->j:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_events_per_day"

    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->k:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_public_events_per_day"

    const v1, 0xc350

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->l:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_conversions_per_day"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->m:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.store.max_stored_events_per_app"

    invoke-static {v0, v7}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->n:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.url"

    const-string/jumbo v1, "https://app-measurement.com/a"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->o:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.backoff_period"

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->p:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.window_interval"

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->q:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.interval"

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->r:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.stale_data_deletion_interval"

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->s:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.initial_upload_delay_time"

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->t:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.retry_time"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->u:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.retry_count"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->v:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.upload.max_queue_time"

    const-wide v2, 0x90321000L

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->w:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.lifetimevalue.max_currency_tracked"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->x:Lcom/google/android/gms/measurement/internal/s;

    const-string/jumbo v0, "measurement.service_client.idle_disconnect_millis"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/r;->y:Lcom/google/android/gms/measurement/internal/s;

    return-void
.end method
