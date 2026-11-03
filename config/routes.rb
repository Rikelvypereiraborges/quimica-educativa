Rails.application.routes.draw do
  root "home#index"

  get "materias/:slug", to: "subjects#show", as: :subject
  get "materias/:subject_slug/aulas/:id", to: "lessons#show", as: :lesson
  post "materias/:subject_slug/aulas/:id/responder", to: "lessons#answer", as: :answer_lesson
  get "recursos", to: "resources#index", as: :resources
  get "glossario", to: "resources#glossary", as: :glossary
  get "formulas", to: "resources#formulas", as: :formulas
  get "roteiros-de-laboratorio", to: "resources#laboratory", as: :laboratory_guides
  get "seguranca", to: "resources#safety", as: :safety
  get "referencias", to: "resources#references", as: :references
  get "perguntas-frequentes", to: "resources#faq", as: :faq
  get "sobre", to: "resources#about", as: :about
  get "contato", to: "resources#contact", as: :contact
  get "termos", to: "resources#terms", as: :terms
  get "privacidade", to: "resources#privacy", as: :privacy
  get "busca", to: "resources#search", as: :search
  get "revisao", to: "resources#review", as: :review
  get "certificados/:slug", to: "resources#certificate", as: :certificate
  get "simulados", to: "quizzes#index", as: :quizzes
  post "simulados/iniciar", to: "quizzes#start", as: :start_quiz
  get "simulados/questoes", to: "quizzes#show", as: :quiz
  post "simulados/responder", to: "quizzes#submit", as: :submit_quiz
  get "ferramentas", to: "tools#index", as: :tools
  get "tabela-periodica", to: "resources#periodic_table", as: :periodic_table
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

end
