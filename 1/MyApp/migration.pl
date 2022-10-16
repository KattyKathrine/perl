$base = 'dbic-migration -I lib --schema_class MyApp::Schema --dsn dbi:SQLite:dbname=db/dancr.db --target_dir db';

for (shift) { 
    if (/prepare/) { exec "$base prepare"; }
    if (/install/) { exec "$base install"; }
} 
